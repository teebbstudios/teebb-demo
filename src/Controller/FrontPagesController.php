<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FrontPagesController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function homeAction(): Response
    {
        return $this->render('front_pages/index.html.twig', [
        ]);
    }

    /**
     * @Route("/show-menu", name="show-menu")
     */
    public function showMenuAction(): Response
    {
        return $this->render('front_pages/show_menu.html.twig', [
        ]);
    }

    /**
     * @Route("/article-list", name="article-list")
     */
    public function articleListAction(): Response
    {
        return $this->render('front_pages/article_list.html.twig', [
        ]);
    }


}
