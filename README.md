# Bonita Cloud documentation resources

This repository containsBonita Cloud documentation resources documentation site content.
It uses [Markdown](https://help.github.com/categories/writing-on-github/) to create documentation content.


## View rendered content on GitHub

Using the [Github Markdown Format](https://help.github.com/categories/writing-on-github/) allows to check the documentation directly on the GitHub repository website.

Hence a simple way to view documentation content is to browse the `md` folder on [GitHub website](md).

This [Table of contents](md/taxonomy.md) is also provided to ease your navigation.

## Build project

The project contains several tasks to generate the documentation content.

### HTML

Use `npm run build` to have the HTML files generated to the `build/html` directory.

This command requires one argument:
- `application` - URL prefix when serving documentation images. Image URLs will be like:
```html
<img src="${application}/images/latest/<image_filename>"/>
```

**Example**: With application=`cloud`, generated HTML will contain `img` tags like:
```html
<img src="cloud/images/latest/bcd_overview.png"/>
```

Providing arguments to the HTML build command is done with one of the following syntaxes:
```bash
npm run build -- [application] 
npm run build -- -a [application]
npm run build -- -a [application]
```

Examples:
```bash
npm run build -- cloud
npm run build -- -a cloud
```

### Taxonomy

Once the HTML content has been generated, the `taxonomy.json` file can be generated from the `build/html/taxonomy.html` file.

Use the `npm run taxonomy` command to do so.

## Contribute

To help you contributing to Bonita Intelligent Continuous Improvement documentation, we provide a set of [contribution guidelines](https://github.com/bonitasoft/bonita-doc/blob/7.10/CONTRIBUTING.md).

Thanks for taking time to contribute!