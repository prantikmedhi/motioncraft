# Web tool guides

Load this file when a task names one of these repositories. Verify installed versions in the target project before copying imports; examples show current repository patterns, not a promise that every version has identical APIs.

## Vanta

Repository: https://github.com/tengbao/vanta

Use for decorative animated backgrounds attached to an existing element. Install `vanta` and the matching renderer dependency (`three` or `p5`). In React, create the effect in a client-only effect after a ref exists, pass `THREE` when using an npm Three.js build, and call `effect.destroy()` during cleanup. Keep foreground content in the same container, add a static CSS background, and disable or simplify effects for reduced motion, low-power devices, and hidden tabs. Size the host element explicitly.

```tsx
const host = useRef<HTMLDivElement>(null)
useEffect(() => {
  if (!host.current || window.matchMedia('(prefers-reduced-motion: reduce)').matches) return
  let effect: { destroy: () => void } | undefined
  let disposed = false
  import('vanta/dist/vanta.waves.min').then(({ default: WAVES }) => {
    if (disposed || !host.current) return
    effect = WAVES({ el: host.current, THREE, mouseControls: true, touchControls: false })
  })
  return () => { disposed = true; effect?.destroy() }
}, [])
```

Avoid Vanta for interaction-critical content, full-page motion by default, or any design that has no non-WebGL fallback.

## GSAP

Repository: https://github.com/greensock/GSAP

Install `gsap`. Import `gsap` and named plugins, then register plugins before use. Use `@gsap/react` `useGSAP()` in React when available; otherwise scope work with `gsap.context()` and revert on cleanup. Prefer transforms and opacity. Use `ScrollTrigger` for scroll-linked animation, not a custom scroll hijack. Gate nonessential motion behind `prefers-reduced-motion`.

```tsx
const root = useRef<HTMLDivElement>(null)
useGSAP(() => {
  gsap.from('.card', { y: 32, opacity: 0, stagger: 0.08, duration: 0.6 })
}, { scope: root })
```

For ScrollTrigger, register it once, use scoped selectors, set start/end from content needs, and kill/revert on unmount. Avoid animating `width`, `height`, `top`, and `left` when a transform can express the same effect.

## Lenis

Repository: https://github.com/darkroomengineering/lenis

Install `lenis` and import `lenis/dist/lenis.css`. Use one Lenis instance per scroll context. `autoRaf: true` is simplest. With GSAP, wire `lenis.on('scroll', ScrollTrigger.update)`, feed `lenis.raf(time * 1000)` from the GSAP ticker, and disable ticker lag smoothing. Preserve anchors, focus scrolling, nested scroll areas, modals, touch behavior, and reduced motion. Call `destroy()` on cleanup.

Do not add Lenis merely because a page has scroll. Native scroll already supports sticky positioning, anchors, and accessibility; add Lenis only when a deliberate smooth-scroll treatment earns its cost.

## React Bits

Repository: https://github.com/DavidHDev/react-bits

Use as a component pattern source. Prefer the component page's copy/install command, such as `npx shadcn@latest add @react-bits/BlurText-TS-TW`, only after checking the project stack. Copy the smallest useful component, remove demo dependencies, replace colors/type/motion with project tokens, and audit keyboard behavior, SSR boundaries, and bundle impact. Treat generated code as a draft.

## Three.js

Repository: https://github.com/mrdoob/three.js

Install `three` for application use. Build a scene, camera, renderer, lights/materials, resize handling, and animation loop. Cap pixel ratio, pause when offscreen, and dispose geometries, materials, textures, render targets, controls, and renderer on teardown. Use `GLTFLoader` or other addons only when the asset pipeline needs them. Keep HTML equivalents for meaning and interaction.

```ts
const scene = new THREE.Scene()
const camera = new THREE.PerspectiveCamera(45, width / height, 0.1, 100)
const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true })
renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2))
```

## Magic MCP

Repository: https://github.com/21st-dev/magic-mcp

Use only when MCP is configured and the user wants generated UI. Official CLI pattern: `npx @21st-dev/cli@latest install <client> --api-key <key>`. Supported clients listed by the repository include Cursor, Windsurf, Cline, and Claude. Never commit API keys. Give Magic exact framework, route, component, token, responsive, accessibility, and dependency constraints. Inspect every generated file, import, package change, and security boundary before accepting it.

## awesome-react-components

Repository: https://github.com/brillout/awesome-react-components

Use as an index, not as a dependency. Shortlist candidates by category, then inspect the actual package repository and docs. Compare license, maintenance, React/SSR compatibility, keyboard support, bundle size, theming, dependency count, and escape hatches. Recommend build-vs-buy with evidence. Record rejected options when the decision has meaningful cost.

## Shared delivery contract

For every tool integration, report: selected source and version, files changed, fallback behavior, cleanup strategy, reduced-motion behavior, verification command, and residual risk.
