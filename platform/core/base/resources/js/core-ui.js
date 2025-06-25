// platform/core/base/resources/js/core-ui.js

// Import Bootstrap’s JS
import 'bootstrap'

// Import the compiled Tabler bundle
import '@tabler/core/dist/js/tabler'

// Expose globals (if needed elsewhere)
import * as bootstrap from 'bootstrap'
import * as tabler    from '@tabler/core/dist/js/tabler'

globalThis.bootstrap = bootstrap
globalThis.tabler    = tabler

// Your custom progress setup
import setupProgress from './base/progress'

setupProgress({
  showSpinner: true,
})
