function optional_template_field(field: {[key: string]: string | URL | Exclude<Author, {}> | null}): string {
    const field_name: string = Object.keys(field)[0]
    const field_value: string | URL | null = field[field_name]
    if (field_value === null) {
        return ''
    } else {
        return `"${field_name}": "${field_value}",`
    }
}

interface Author {
    name?: string;
    url?: URL;
    avatar?: URL; 
}

function template(title: string, home_page_url: URL | null, feed_url: URL | null, description: string | null,
        icon: URL | null, favicon: URL | null,
        author: Exclude<Author, {}>,
        items: any[]): string {
    return `{
	"version": "https://jsonfeed.org/version/1",
    "title": "${title}",
    ${optional_template_field({home_page_url})}
    ${optional_template_field({feed_url})}
    ${optional_template_field({description})}
    ${optional_template_field({icon})}
    ${optional_template_field({favicon})}
    ${optional_template_field({author})}
	"items": ${items}
    }`
}