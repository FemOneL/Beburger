package com.example.beburger.items;

public enum Burgers {
    Mexicano(175, "Бургер \"Мексикано\"",
            "https://i.ibb.co/7pTpxNq/mexicano.png"),
    Clasic(160, "Бургер \"Класичний\"",
            "https://i.ibb.co/fYTyVPg/classic.png"),
    Suluguni(165, "Бургер \"Сулугуні\"",
            "https://i.ibb.co/hfcthXD/suluguni.png"),
    Vegeteriano(155, "Бургер \"Вегетеріано\"",
            "https://i.ibb.co/hBQBMB8/vegetarian.png"),
    Bbq(175, "Бургер \"Барбекю\"",
            "https://i.ibb.co/q5HSg8X/bbq.png"),
    Salmon(190, "Бургер \"Лососевий\"",
            "https://i.ibb.co/fMtvt9H/salmon.png"),
    Cola(30, "Напій \"COLA\"",
            "https://i.ibb.co/RptX5Xq/cola05.png"),
    Fanta(30, "Напій \"FANTA\"",
            "https://i.ibb.co/kc442Mg/fanta.png"),
    Sprite(30, "Напій \"SPRITE\"",
                  "https://i.ibb.co/z81x56X/sprite.png"),
    Limonade(34, "Напій \"Лимонад\"",
                  "https://i.ibb.co/m8CDnHJ/limonade.png"),
    Borjomi(40, "Напій \"BORJOMI\"",
                  "https://i.ibb.co/4jr8ztj/borjomi.png"),
    Morshinska(32, "Напій \"Моршинська\"(негазована)",
                  "https://i.ibb.co/qjZhNxf/morshinska.png"),
    Ketchup(9, "Соус \"Кетчуп\"",
                       "https://i.ibb.co/hWnVhQH/ketchup.png"),
    BbqSauce(11, "Соус \"Барбекю\"",
                       "https://i.ibb.co/q9tYkCd/bbqsauce.png"),
    Sweetchili(13, "Соус \"Солодкий чілі\"",
                       "https://i.ibb.co/5FwqHfH/sweetchili.webp"),
    Tartar(11, "Соус \"Тартар\"",
                       "https://i.ibb.co/NFZxtpP/tartar.webp"),
    Honey(15, "Соус \"Медово-гірчичний\"",
                       "https://i.ibb.co/WfpB9Mz/honey.png"),
    Superhot(15, "Соус \"Супер-гострий\"",
                       "https://i.ibb.co/bg7P2FZ/superhot.png");

    private String name;
    private String imageUrl;
    private final int totalCost;
    private int cost;
    private int count;

    Burgers(int cost, String name, String imageUrl) {
        this.name = name;
        this.cost = cost;
        this.imageUrl = imageUrl;
        totalCost = cost;
        count = 1;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getRealName() {
        return name();
    }

    public void counter(int count) {
        this.cost = totalCost * count;
        this.count = count;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }
}
