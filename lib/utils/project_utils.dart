class ProjectUtils{
  final String image;
  final String title;
  final String subtitle;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.webLink,
  });
}


List<ProjectUtils> allProjectUtils = [
  ProjectUtils(
    image: 'assets/glamour_essentials.png', 
    title: 'Glamour Essentials', 
    subtitle: 'This is application of a beauty products', 
    webLink: 'https://asobien810.github.io/Glamour-Essentials/'),

    ProjectUtils(image: 'assets/portfolio.png', 
    title: 'Personal Portfolio Website', 
    subtitle: 'This is a application showing my skills and projects', 
    webLink: 'https://asobien810.github.io/Portfolio-Page/'),

    ProjectUtils(image: 'assets/product_landing.png', 
    title: 'Product Landing Page' , 
    subtitle: 'This application is example of describing some product', 
    webLink: 'https://asobien810.github.io/Product-Landing-Page/'),

    ProjectUtils(image: 'assets/search_and_filter.png', 
    title: 'Search and Filter Products', 
    subtitle: 'This is a part of shop website where you can search or filter wanted products', 
    webLink: 'https://asobien810.github.io/Product-filter-and-search/'),

    ProjectUtils(image: 'assets/text_editor.png', 
    title: 'Text Editor', 
    subtitle: 'This is a website containing text editor', 
    webLink: 'https://asobien810.github.io/Text-Editor/'),

    ProjectUtils(image: 'assets/to_do_list.png', 
    title: 'To Do List', 
    subtitle: 'Application which will help you with organizing your life', 
    webLink: 'https://asobien810.github.io/Text-Editor/'),
];