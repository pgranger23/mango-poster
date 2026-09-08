// ==============================================================================
// MANGO: An Autodiff Neutrino Oscillation Engine for Differentiable Analysis Pipelines
// Scientific Poster in Typst (A0 Portrait: 841mm x 1189mm) - 2 Columns Layout
// Author: Pierre Granger (CERN) - arXiv:2608.13429
// ==============================================================================

#set page(
  paper: "a0",
  flipped: false,
  margin: (x: 22mm, top: 16mm - 5pt, bottom: 16mm - 5pt),
  fill: rgb("#fafaf9"),
  background: [
    // -------------------------------------------------------------
    // Rich Dynamic Organic Dripping Mango Fluid Artwork
    // -------------------------------------------------------------
    #place(
      top + left,
      image("assets/mango_juice_background.jpg", width: 100%, height: 100%, fit: "cover")
    )
    


    // Soft central MANGO watermark
    #place(
      center + horizon,
      dx: 0pt,
      dy: 50pt,
      image("assets/mango_watermark.png", width: 55%, fit: "contain")
    )
  ]
)

#set text(
  font: ("Helvetica Neue", "Arial"),
  size: 22pt,
  fill: rgb("#0f172a"),
  weight: "regular"
)

#set par(justify: true, leading: 0.50em)

// ==============================================================================
// UNIFIED MANGO DESIGN SYSTEM PALETTE
// ==============================================================================
// 1. Primary Brand Anchor (Deep Teal)
#let brand-dark-teal    = rgb("#092227")
#let brand-deep-teal    = rgb("#0f3840")
#let brand-teal         = rgb("#0f4c5c")
#let brand-light-teal   = rgb("#f0fdfa")
#let brand-border-teal  = rgb("#99f6e4")

// 2. Mango Energy & Highlights (Gold & Orange)
#let brand-orange       = rgb("#ea580c")
#let brand-dark-orange  = rgb("#9a3412")
#let brand-gold         = rgb("#f59e0b")
#let brand-light-orange = rgb("#fff7ed")
#let brand-border-orange= rgb("#fed7aa")

// 3. Atmospheric & Physics Gradients (Cyan & Azure)
#let brand-dark-cyan    = rgb("#0e7490")
#let brand-cyan         = rgb("#0284c7")
#let brand-light-cyan   = rgb("#ecfeff")
#let brand-border-cyan  = rgb("#a5f3fc")

// 4. Emerald Validation & Earth Mantle (Green)
#let brand-dark-green   = rgb("#166534")
#let brand-green        = rgb("#15803d")
#let brand-light-green  = rgb("#f0fdf4")
#let brand-border-green = rgb("#86efac")

// 5. Universal Neutrals & Typography
#let text-primary       = rgb("#0f172a")  // Slate 900
#let text-secondary     = rgb("#334155")  // Slate 700
#let text-muted         = rgb("#475569")  // Slate 600
#let brand-muted        = rgb("#475569")  // Caption Slate
#let border-subtle      = rgb("#cbd5e1")  // Slate 300
#let bg-subtle          = rgb("#f8fafc")  // Slate 50
#let brand-card-bg      = rgb("#ffffff")

// Custom Card / Box Function (Clean Full-Width Header Without Badges)
#let poster-box(
  title: "",
  accent-color: brand-deep-teal,
  border-color: rgb("#cbd5e1"),
  spacing-val: 10pt,
  body
) = {
  block(
    width: 100%,
    stroke: 1.5pt + border-color,
    radius: 12pt,
    fill: brand-card-bg,
    clip: true,
    inset: 0pt,
    outset: 0pt,
    spacing: spacing-val,
    [
      // Card Header
      #block(
        width: 100%,
        fill: accent-color,
        inset: (x: 18pt, y: 11pt),
        [
          #text(fill: white, size: 27pt, weight: "bold", tracking: 0.2pt)[#title]
        ]
      )
      // Card Body
      #block(
        width: 100%,
        inset: (x: 18pt, top: 11pt, bottom: 12.5pt),
        body
      )
    ]
  )
}

// ==========================================
// EXPANDED SCIENTIFIC HEADER BANNER
// ==========================================
#block(
  width: 100%,
  fill: gradient.linear(
    brand-dark-teal,
    brand-deep-teal,
    rgb("#164e63"),
    rgb("#0f3840"),
    angle: 30deg
  ),
  radius: 15pt,
  inset: (x: 28pt, y: 18pt),
  stroke: 2.5pt + brand-orange,
  [
    #grid(
      columns: (auto, 1fr, auto),
      gutter: 22pt,
      align: (center + horizon, left + horizon, right + horizon),
      [
        // Left: Massive White CERN Logo (155pt)
        #box(
          fill: white.transparentize(92%),
          radius: 14pt,
          inset: 12pt,
          stroke: 1.5pt + white.transparentize(70%),
          image("assets/cern_logo_white.svg", width: 155pt)
        )
      ],
      [
        // Center: Main Title with Golden MANGO Highlight
        #text(fill: white, size: 52pt, weight: "bold", tracking: -0.5pt)[
          #text(fill: brand-gold)[MANGO]: An Autodiff Neutrino Oscillation Engine
        ] \
        #v(3pt)
        #text(fill: rgb("#a5f3fc"), size: 31pt, weight: "semibold")[
          for End-to-End Differentiable Analysis Pipelines
        ]
        #v(8pt)
        // Authors & Affiliation
        #grid(
          columns: (auto, auto, auto),
          gutter: 14pt,
          align: horizon,
          [
            #text(fill: white, size: 23pt, weight: "bold")[Pierre Granger]
          ],
          [
            #box(
              fill: white.transparentize(85%),
              radius: 5pt,
              inset: (x: 10pt, y: 4.5pt),
              text(fill: rgb("#e2e8f0"), size: 18.5pt)[pierre.granger\@cern.ch]
            )
          ],
          [
            #box(
              fill: brand-gold.darken(15%),
              radius: 5pt,
              inset: (x: 10pt, y: 4.5pt),
              text(fill: rgb("#092227"), size: 18.5pt, weight: "bold")[arXiv:2608.13429 [hep-ex]]
            )
          ]
        )
      ],
      [
        // Right: Large MANGO Logo + Big Multi-Color Recursive Acronym Next to It
        #grid(
          columns: (auto, auto),
          gutter: 16pt,
          align: (right + horizon, center + horizon),
          [
            #box(
              fill: white.transparentize(92%),
              radius: 10pt,
              inset: (x: 16pt, y: 10pt),
              stroke: 1.5pt + brand-gold.transparentize(40%),
              [
                #align(left)[
                  #text(fill: rgb("#fbbf24"), size: 29pt, weight: "black")[M]#text(fill: white, size: 29pt, weight: "bold")[ANGO]#text(size: 27pt, fill: rgb("#94a3b8"))[:]
                  #h(6pt)
                  #text(fill: rgb("#fb923c"), size: 27pt, weight: "black")[A]
                  #h(5pt)
                  #text(fill: rgb("#38bdf8"), size: 27pt, weight: "black")[N]#text(size: 23pt, fill: rgb("#e2e8f0"))[eutrino] \
                  #v(3pt)
                  #text(fill: rgb("#4ade80"), size: 27pt, weight: "black")[G]#text(size: 23pt, fill: rgb("#e2e8f0"))[radient]
                  #h(6pt)
                  #text(fill: rgb("#f43f5e"), size: 27pt, weight: "black")[O]#text(size: 23pt, fill: rgb("#e2e8f0"))[scillator]
                ]
              ]
            )
          ],
          [
            // Solid White Background with Gold Stroke for Maximum Color Contrast & Pop
            #box(
              fill: white,
              radius: 14pt,
              inset: 10pt,
              stroke: 2.2pt + brand-gold,
              image("assets/logo_clean_trans.png", width: 165pt)
            )
          ]
        )
      ]
    )
  ]
)

#v(11pt)

// ==========================================
// 2-COLUMN SCIENTIFIC BODY
// ==========================================
#grid(
  columns: (1fr, 1fr),
  gutter: 22pt,
  [
    // ==========================================
    // COLUMN 1 (LEFT): JAX ARCHITECTURE, GEOMETRY & DERIVATIVES
    // ==========================================
    #poster-box(
      title: "1. The Derivative Gap & JAX-Native Engine",
      accent-color: brand-deep-teal,
      border-color: brand-teal.lighten(40%)
    )[
      // High-Impact JAX Highlight Banner (Large 160pt Logo & 19pt Scaled Typography)
      #box(
        fill: brand-light-teal,
        stroke: 2pt + brand-teal,
        radius: 10pt,
        inset: (x: 16pt, y: 9pt),
        width: 100%,
        [
          #grid(
            columns: (auto, 1fr),
            gutter: 20pt,
            align: (center + horizon, left + horizon),
            [
              #box(
                fill: white,
                radius: 9pt,
                inset: 9pt,
                stroke: 1.5pt + rgb("#99f6e4"),
                image("assets/jax_logo_500.png", width: 160pt)
              )
            ],
            [
              #text(fill: brand-deep-teal, weight: "bold", size: 24pt)[Native JAX Transformation Graph]:\
              #v(4pt)
              #text(size: 19pt, fill: rgb("#0f172a"))[
                • #text(fill: brand-deep-teal, weight: "bold")[`jax.jit`]: Trace compilation for zero overhead on GPU & CPU.\
                • #text(fill: brand-cyan.darken(15%), weight: "bold")[`jax.vmap`]: Vectorized batching across $(E, cos theta_z)$ grids.\
                • #text(fill: brand-orange.darken(5%), weight: "bold")[`jax.grad` / `vjp`]: Exact reverse AD with $bold(O(1))$ parameter scaling.\
                • #text(fill: brand-dark-green, weight: "bold")[`jax.tree_util`]: PyTrees native to `NumPyro` & `BlackJAX`.
              ]
            ]
          )
        ]
      )

      #v(6pt)
      - *The Derivative Gap*: Legacy engines (`OscProb`, `Prob3++`, `NuFast`) evaluate $P_(alpha beta)$ in forward mode only. Computing sensitivities requires #text(fill: rgb("#991b1b"), weight: "bold")[$2 N_("params")$ finite difference passes] with severe step-size tuning instabilities across rapid oscillation phases.
      - *The MANGO Paradigm*: Written from scratch in pure JAX, evaluating #text(fill: brand-green.darken(10%), weight: "bold")[exact machine-precision sensitivities] w.r.t *all* Hamiltonian, trajectory, and detector parameters in a #text(fill: brand-deep-teal, weight: "bold")[single reverse pass].
      - *Differentiable Spherical Chord Metric*: Trajectory through #text(fill: brand-deep-teal, weight: "bold")[43 PREM shells] parameterized in closed form:
        $
          s(r) = sqrt(r^2 - r_min^2), quad r_min = (R_⊕ - d_"det") sqrt(1 - cos^2 theta_z)
        $

      #v(-4pt)
      #align(center)[
        #image("figures/mango_chord_geometry.pdf", width: 77.62%)
      ]
      #v(-4pt)
      #text(size: 17.5pt, fill: brand-muted)[
        *Figure 1:* Chord geometry through 43 PREM shells ($n_("sub")=4$, 48 segments). Path lengths $\{L_k\}$ are #text(fill: rgb("#0f172a"), weight: "semibold")[smooth, closed-form differentiable functions].
      ]

      #v(3pt)
      - #text(fill: brand-green.darken(15%), weight: "bold")[Singularity-Free Divided Differences]: Evaluates $exp(-i H L)$ without explicit diagonalization $-->$ #text(fill: rgb("#991b1b"), weight: "bold")[eliminates] $1/(lambda_i - lambda_j)$ #text(weight: "bold")[singularities at MSW degeneracies].
      - *Sub-linear Reverse-Mode Scaling*: Output-dimension scaling ($O(1)$ in input count):
        #v(2pt)
        #table(
          columns: (1.5fr, 1fr, 1.3fr),
          inset: 5.5pt,
          align: (left, center, center),
          stroke: 0.5pt + rgb("#cbd5e1"),
          fill: (x, y) => if y == 0 { rgb("#f1f5f9") } else if y == 3 { rgb("#f0fdf4") } else { white },
          [*Derivative Target*], [*Parameters*], [*Overhead vs. Forward*],
          [Standard Oscillation Parameters], [6], [2.5×],
          [Spherical Trajectory Geometry], [42], [2.9×],
          [Layered PREM Earth (Densities, $Y_e$, Radii)], [369], [*3.0×* (#text(fill: brand-green, weight: "bold")[250× faster than FD])]
        )

        #v(4pt)
        #box(
          fill: bg-subtle,
          stroke: 2pt + border-subtle,
          radius: 10pt,
          inset: (x: 14pt, y: 7.5pt),
          width: 100%,
          [
            #text(size: 18.5pt, weight: "bold", fill: brand-deep-teal)[Multi-Tier Numerical Validation Benchmarks]:\
            #v(2pt)
            #text(size: 17pt, fill: rgb("#0f172a"))[
              • *Forward Accuracy*: $< 10^(-8)$ vs `OscProb`/`NuFast` ($6times 10^(-15)$ vs numerical MSW)\
              • *AD Gradient Precision*: $< 10^(-9)$ relative error vs centered finite differences\
              • *Physical Limits Recovery*: Bit-for-bit Standard Model recovery ($10^(-15)$)
            ]
          ]
        )
    ]

    #v(10.0pt)

    #poster-box(
      title: "2. Atmospheric PREM Derivative Landscapes",
      accent-color: rgb("#0e7490"),
      border-color: rgb("#67e8f9")
    )[
      // Scaled Unified Jacobian Ribbon
      #box(
        fill: brand-light-cyan,
        stroke: 2pt + brand-dark-cyan,
        radius: 10pt,
        inset: (x: 14pt, y: 8pt),
        width: 100%,
        [
          #align(center)[
            #text(size: 19pt, fill: rgb("#0e7490"), weight: "bold")[Unified Multi-Channel Jacobian in a Single `jacfwd` Pass]:
            #v(1pt)
            $
              J(E, cos theta_z) = nabla_({theta_("osc"), \, bold(rho)_"Earth", \, bold(g)_"geom", \, bold(epsilon)_"BSM"}) P_(mu e)(E, cos theta_z)
            $
          ]
        ]
      )

      #v(4pt)
      // Scaled Earth Geophysics vs Geometry Dual Cards
      #grid(
        columns: (1fr, 1fr),
        gutter: 10pt,
        [
          #box(
            fill: brand-light-green,
            stroke: 2pt + brand-dark-green,
            radius: 10pt,
            inset: (x: 12pt, y: 7pt),
            width: 100%,
            [
              #text(fill: rgb("#166534"), weight: "bold", size: 18pt)[Earth Density Tomography]:\
              #v(2pt)
              #text(size: 16.5pt, fill: rgb("#14532d"))[
                $(partial P)/(partial ln rho_"core")$ & $(partial P)/(partial ln rho_"mantle")$ provide exact Jacobians for Earth interior inversion, with an abrupt core shadow cutoff at $cos theta_z <= -0.838$.
              ]
            ]
          )
        ],
        [
          #box(
            fill: brand-light-orange,
            stroke: 2pt + brand-orange,
            radius: 10pt,
            inset: (x: 12pt, y: 7pt),
            width: 100%,
            [
              #text(fill: brand-orange.darken(10%), weight: "bold", size: 18pt)[Non-Analytic Geometry AD]:\
              #v(2pt)
              #text(size: 16.5pt, fill: rgb("#7c2d12"))[
                $(partial P)/(partial cos theta_z)$ & $(partial P)/(partial h_"atm")$ differentiate spherical chord lengths $\{L_k\}$ and production height, reaching steep extrema of $plus.minus 40$.
              ]
            ]
          )
        ]
      )

      #v(4pt)
      // Hero Figure 2 (Massive 96% width)
      #align(center)[
        #image("figures/mango_rho_grad.pdf", width: 96%)
      ]
      #v(-4pt)
      #text(size: 17.5pt, fill: brand-muted)[
        *Figure 2:* Complete 5-channel sensitivity landscape across PREM Earth on a $220times 220$ grid ($E_nu in [1, 30]" GeV"$). Top: forward $P(nu_mu -> nu_e)$ and standard $theta_23$ sensitivity. Bottom: logarithmic core & mantle density gradients alongside non-analytic zenith $cos theta_z$ and production height $h_"atm"$ derivatives.
      ]
    ]
  ],
  [
    // ==========================================
    // COLUMN 2 (RIGHT): SOLAR & BSM, USING DERIVATIVES, OUTLOOKS
    // ==========================================
    #poster-box(
      title: "3. Solar MSW & Non-Analytic BSM Derivatives",
      accent-color: brand-dark-green,
      border-color: brand-border-green
    )[
      // Full-Width Banner 1: Solar MSW & Core Tomography
      #box(
        fill: brand-light-green,
        stroke: 2pt + brand-dark-green,
        radius: 10pt,
        inset: (x: 14pt, y: 7.5pt),
        width: 100%,
        [
          #text(fill: brand-dark-green, weight: "bold", size: 18.5pt)[Continuous Solar Matter & MSW Resonance Gradients]:\
          #v(2pt)
          #text(size: 16.5pt, fill: rgb("#14532d"))[
            Exact functional sensitivity kernels $|(delta P_(e e))/(delta ln N_e(r))|$ across 80 SSM shells, tracking the sharp MSW peak at $E = 4.41" MeV"$ without numerical derivative singularities.
          ]
        ]
      )

      #v(2pt)
      #align(center)[
        #image("figures/fig_solar_autodiff.pdf", width: 80.5%)
      ]
      #v(-4pt)
      #text(size: 16pt, fill: brand-muted)[
        *Figure 3:* Solar neutrino AD. *(a)* Sharp MSW resonance peak in $(partial P_(e e))/(partial(Delta m^2_21))$ ($1.68times 10^3" eV"^(-2)$). *(b)* 2D continuous solar core tomography functional sensitivity kernel across 80 shells ($1.6" s"$).
      ]

      #v(3pt)
      // Full-Width Banner 2: Extended BSM Limits
      #box(
        fill: brand-light-cyan,
        stroke: 2pt + brand-dark-cyan,
        radius: 10pt,
        inset: (x: 14pt, y: 7.5pt),
        width: 100%,
        [
          #text(fill: brand-dark-cyan, weight: "bold", size: 18.5pt)[Beyond-the-Standard-Model Sensitivities at the SM Limit]:\
          #v(2pt)
          #text(size: 16.5pt, fill: rgb("#155e75"))[
            Instant machine-precision Jacobians for Lindblad environmental decoherence ($gamma_("ij")$) and non-unitary mixing ($alpha_("ij")$) directly at the SM point ($gamma=0, alpha=0$) for zero-derivation profile likelihoods.
          ]
        ]
      )

      #v(2pt)
      #align(center)[
        #image("figures/mango_bsm_derivatives.pdf", width: 80.5%)
      ]
      #v(-4pt)
      #text(size: 16pt, fill: brand-muted)[
        *Figure 4:* Sensitivities at SM point ($gamma=0, alpha=0$): *(a)* Lindblad decoherence $(partial P)/(partial gamma_("ij"))$. *(b)* Non-unitary mixing $(partial P)/(partial alpha_("ij"))$ through PREM Earth at $cos theta_z = -1$.
      ]
    ]

    #v(10.0pt)

    #poster-box(
      title: "4. Using the Derivatives: Earth Interior Inversion",
      accent-color: brand-orange,
      border-color: brand-gold.lighten(20%)
    )[
      // Differentiable Pipeline Banner with 3 Aligned Stage Micro-Cards
      #box(
        fill: brand-light-orange,
        stroke: 2pt + brand-orange,
        radius: 10pt,
        inset: (x: 14pt, y: 8pt),
        width: 100%,
        [
          // Top: Mathematical Pipeline Display
          #align(center)[
            #text(size: 17.5pt)[
              $
                underbrace(H(bold(theta.alt)) --> P_(alpha beta), "1. Oscillation Physics")
                quad --> quad
                underbrace(mu_b --> F_(i j) --> F^(-1), "2. Fisher Inversion")
                quad --> quad
                underbrace(sigma_i = sqrt((F^(-1))_(i i)) --> frac(partial sigma_i, partial theta_("sys")), "3. Sensitivity Reach")
              $
            ]
          ]

          #v(5pt)

          // Bottom: 3 Aligned Parameter Definition Micro-Cards
          #grid(
            columns: (1fr, 1fr, 1.15fr),
            gutter: 8pt,
            [
              #box(
                fill: rgb("#f0fdf4"),
                stroke: 1pt + rgb("#86efac"),
                radius: 6pt,
                inset: (x: 7pt, y: 5pt),
                width: 100%,
                [
                  #text(size: 15.5pt, fill: rgb("#166534"), weight: "bold")[Engine Inputs]:\
                  #v(1pt)
                  #text(size: 15.5pt, fill: rgb("#14532d"))[
                    • $bold(theta.alt)$: Oscillation & PREM density\
                    • $P_(alpha beta)$: Transition probability
                  ]
                ]
              )
            ],
            [
              #box(
                fill: rgb("#ecfeff"),
                stroke: 1pt + rgb("#67e8f9"),
                radius: 6pt,
                inset: (x: 7pt, y: 5pt),
                width: 100%,
                [
                  #text(size: 15.5pt, fill: rgb("#0e7490"), weight: "bold")[Event Statistics]:\
                  #v(1pt)
                  #text(size: 15.5pt, fill: rgb("#155e75"))[
                    • $mu_b$: Binned counts $(E_b, cos theta_z)$\
                    • $F_(i j)$: Fisher information matrix
                  ]
                ]
              )
            ],
            [
              #box(
                fill: rgb("#fff7ed"),
                stroke: 1pt + rgb("#fed7aa"),
                radius: 6pt,
                inset: (x: 7pt, y: 5pt),
                width: 100%,
                [
                  #text(size: 15.5pt, fill: brand-orange.darken(10%), weight: "bold")[Inference & Reach]:\
                  #v(1pt)
                  #text(size: 15.5pt, fill: rgb("#7c2d12"))[
                    • $F^(-1)$: Covariance matrix\
                    • $sigma_i$: Error & $(partial sigma_i)/(partial theta_("sys"))$ reach
                  ]
                ]
              )
            ]
          )
        ]
      )

      #v(3pt)
      #align(center)[
        #image("figures/tomography_fisher.pdf", width: 80.5%)
      ]
      #v(-4pt)
      #text(size: 16pt, fill: brand-muted)[
        *Figure 5:* 11-parameter Earth interior fit ($1.5times 10^5$ events). *(a)* Reconstructed count derivatives. *(b)* Fisher information localized below core threshold. *(c)* Instant sensitivity gradients $(partial sigma)/(partial sigma_("det"))$ via nested AD vs. 17 forward grid scans. *(d)* Full 11-param covariance matrix.
      ]

      #v(3pt)
      // Technique & Principle Callout
      #box(
        fill: brand-light-orange,
        stroke: 2pt + brand-orange,
        radius: 10pt,
        inset: (x: 14pt, y: 8pt),
        width: 100%,
        [
          #text(size: 18pt, weight: "bold", fill: brand-orange.darken(15%))[Principle: Hardware Co-Design via Nested AD `grad(jacfwd)` through $F^(-1)$:]
          #v(3pt)
          #text(size: 16pt, fill: rgb("#0f172a"))[
            • *Differentiating Through Matrix Inversion*: Propagates exact sensitivities through the Fisher matrix and its inverse $(F^(-1))_(i i)$, bypassing brute-force re-simulations.\
            • *Instant Hardware Gradients*: Evaluates analytical sensitivity response $(partial sigma)/(partial theta_("detector"))$ and local curvature $(partial^2 sigma)/(partial theta_("detector")^2)$ in a single backward pass.\
            • *End-to-End Experiment Optimization*: Enables gradient-based co-optimization of detector resolution, binning schemes, and baselines directly against physics discovery reach.
          ]
        ]
      )
    ]

    #v(10.0pt)

    #poster-box(
      title: "5. Outlooks & Differentiable Ecosystem",
      accent-color: brand-deep-teal,
      border-color: brand-border-teal
    )[
      #let outlook-card(title, body-text, border-col, bg-col, tag-col) = box(
        fill: bg-col,
        stroke: 2pt + tag-col,
        radius: 10pt,
        inset: (x: 14pt, y: 7.5pt),
        width: 100%,
        [
          #text(fill: tag-col, weight: "bold", size: 17pt)[#title]\
          #v(2pt)
          #text(size: 16.5pt, fill: rgb("#0f172a"))[#body-text]
        ]
      )

      #outlook-card(
        "3D Earth Tomography & Geophysics",
        [Functional sensitivity kernels $(delta P)/(delta rho(r))$ enable gradient-based 3D inversion of lateral mantle heterogeneities and Large Low-Shear-Velocity Provinces (LLSVPs).],
        brand-border-green, brand-light-green, brand-dark-green
      )

      #v(4pt)
      #outlook-card(
        "Scalable Bayesian Inference (HMC/NUTS)",
        [Native JAX PyTrees connect directly to Hamiltonian Monte Carlo for exact gradient sampling over $100+$ systematic nuisance parameters without grid scans.],
        brand-border-cyan, brand-light-cyan, brand-dark-cyan
      )

      #v(4pt)
      #outlook-card(
        "Automated Optimization & ML Surrogates",
        [Algorithmic co-optimization of binning grids, baseline distances, and detector response for maximum Fisher sensitivity, alongside fast neural surrogate training.],
        brand-border-orange, brand-light-orange, brand-dark-orange
      )
    ]
  ]
)

// Dynamic 1fr expansion pushes the footer banner flush to the bottom margin!
#v(1fr)

// ==========================================
// MASSIVE, PROMINENT FOOTER BANNER & HIGH-RES QR CODES
// ==========================================
#block(
  width: 100%,
  fill: gradient.linear(
    brand-dark-teal,
    brand-deep-teal,
    angle: 90deg
  ),
  radius: 18pt,
  inset: (x: 36pt, y: 26pt),
  stroke: 3pt + gradient.linear(brand-orange, brand-gold, brand-green, angle: 90deg),
  [
    #grid(
      columns: (auto, 1fr, auto, auto),
      gutter: 32pt,
      align: (center + horizon, left + horizon, right + horizon, center + horizon),
      [
        // Massive arXiv QR Code
        #box(
          fill: white,
          radius: 12pt,
          inset: 8pt,
          stroke: 2pt + brand-gold.transparentize(30%),
          image("assets/qr_arxiv.png", width: 175pt)
        )
      ],
      [
        #text(fill: white, size: 36pt, weight: "bold")[arXiv:2608.13429 [hep-ex]] \
        #v(4pt)
        #text(fill: rgb("#a5f3fc"), size: 27pt, weight: "semibold")[MANGO: An Autodiff Neutrino Oscillation Engine for Differentiable Pipelines] \
        #v(5pt)
        #text(fill: rgb("#e2e8f0"), size: 22pt)[Pierre Granger (CERN) | Contact: pierre.granger\@cern.ch | DOI: 10.5281/zenodo.21774110]
      ],
      [
        #align(right + horizon)[
          #text(fill: brand-gold, size: 32pt, weight: "bold")[Open Source Code] \
          #v(3pt)
          #text(fill: white, size: 26pt, font: "Fira Code")[github.com/pgranger23/mango-osc] \
          #v(4pt)
          #box(
            fill: brand-green.darken(20%),
            radius: 6pt,
            inset: (x: 12pt, y: 5pt),
            text(fill: white, size: 19pt, weight: "bold")[Release v0.2.4 (MIT License)]
          )
        ]
      ],
      [
        // Massive GitHub QR Code
        #box(
          fill: white,
          radius: 12pt,
          inset: 8pt,
          stroke: 2pt + brand-gold.transparentize(30%),
          image("assets/qr_github.png", width: 175pt)
        )
      ]
    )
  ]
)
