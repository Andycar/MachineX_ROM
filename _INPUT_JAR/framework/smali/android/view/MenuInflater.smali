.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$MenuState;,
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 63
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "realOwner"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/view/MenuInflater;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuInflater;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 272
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 278
    .end local p1    # "owner":Ljava/lang/Object;
    :cond_4
    :goto_4
    return-object p1

    .line 275
    .restart local p1    # "owner":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_4

    .line 276
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "owner":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4
.end method

.method private getRealOwner()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 266
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 268
    :cond_c
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 129
    .local v2, "menuState":Landroid/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 131
    .local v0, "eventType":I
    const/4 v1, 0x0

    .line 132
    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    .line 136
    .local v6, "unknownTagName":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x2

    if-ne v0, v7, :cond_43

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 149
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_1f
    const/4 v3, 0x0

    .line 150
    .local v3, "reachedEndOfMenu":Z
    :goto_20
    if-nez v3, :cond_df

    .line 151
    packed-switch v0, :pswitch_data_e0

    .line 202
    :cond_25
    :goto_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_20

    .line 144
    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_2a
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting menu, got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 147
    const/4 v7, 0x1

    if-ne v0, v7, :cond_b

    goto :goto_1f

    .line 153
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_4b
    if-nez v1, :cond_25

    .line 157
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5    # "tagName":Ljava/lang/String;
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 159
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_25

    .line 160
    :cond_5d
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 161
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_25

    .line 162
    :cond_69
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 164
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 165
    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, v4, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    .line 168
    invoke-direct {p0, p1, p2, v4}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_25

    .line 170
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_7d
    const/4 v1, 0x1

    .line 171
    move-object v6, v5

    .line 173
    goto :goto_25

    .line 176
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_8f

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 178
    const/4 v1, 0x0

    .line 179
    const/4 v6, 0x0

    goto :goto_25

    .line 180
    :cond_8f
    const-string v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 181
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto :goto_25

    .line 182
    :cond_9b
    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 185
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v7

    if-nez v7, :cond_25

    .line 186
    # getter for: Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    if-eqz v7, :cond_c2

    # getter for: Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 188
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    goto/16 :goto_25

    .line 190
    :cond_c2
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V

    goto/16 :goto_25

    .line 193
    :cond_cb
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 194
    const/4 v3, 0x1

    goto/16 :goto_25

    .line 199
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_d7
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 204
    :cond_df
    return-void

    .line 151
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_4b
        :pswitch_80
    .end packed-switch
.end method

.method private registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 213
    return-void
.end method

.method private registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "subMenu"    # Landroid/view/SubMenu;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 222
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 8
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    iget-object v3, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 111
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_28
    .catchall {:try_start_1 .. :try_end_12} :catchall_21

    .line 117
    if-eqz v2, :cond_17

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 119
    :cond_17
    return-void

    .line 112
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    :catch_18
    move-exception v1

    .line 113
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_19
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 117
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_21
    move-exception v3

    if-eqz v2, :cond_27

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_27
    throw v3

    .line 114
    :catch_28
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    :try_start_29
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_21
.end method
