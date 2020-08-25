module beamui.widgets.marKdownview;

import std.stdio;

import beamui.core.config;
import beamui.widgets.widget;

import hunt.markdown.renderer.text.TextContentRenderer;
import hunt.markdown.node.Node;
import hunt.markdown.parser.Parser;

class MarkDownView : Widget
{
    this()
    {
        string source = "foo foo\n\nbar\nbar";
        string rendered = defaultRenderer().render(parse(source));
        writeln(rendered);
    }

    // override void drawContent(Painter pr)
    // {
    // }

    private TextContentRenderer defaultRenderer() {
        return TextContentRenderer.builder().build();
    }


    private Node parse(string source) {
        return Parser.builder().build().parse(source);
    }
}
