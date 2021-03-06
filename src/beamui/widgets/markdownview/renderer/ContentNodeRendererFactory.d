module beamui.widgets.markdownview.renderer.ContentNodeRendererFactory;

import hunt.markdown.renderer.NodeRenderer;
import beamui.widgets.markdownview.renderer.ContentNodeRendererContext;

/**
 * Factory for instantiating new node renderers when rendering is done.
 */
public interface ContentNodeRendererFactory {

    /**
     * Create a new node renderer for the specified rendering context.
     *
     * @param context the context for rendering (normally passed on to the node renderer)
     * @return a node renderer
     */
    NodeRenderer create(ContentNodeRendererContext context);
}
