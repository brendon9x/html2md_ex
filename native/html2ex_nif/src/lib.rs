use html2md;

#[rustler::nif]
pub fn parse_html(html: String) -> String {
    html2md::parse_html(&html)
}


rustler::init!("Elixir.Html2MdEx", [parse_html]);
