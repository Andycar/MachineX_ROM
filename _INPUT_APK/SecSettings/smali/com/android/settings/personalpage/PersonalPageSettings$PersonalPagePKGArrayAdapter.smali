.class Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PersonalPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalPagePKGArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rsrc:I

.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/personalpage/PersonalPageSettings;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "rsrcId"    # I
    .param p4, "txtId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    .line 92
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 93
    iput-object p5, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->items:Ljava/util/ArrayList;

    .line 94
    iput p3, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->rsrc:I

    .line 95
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    move-object v5, p2

    .line 100
    .local v5, "v":Landroid/view/View;
    if-nez v5, :cond_0

    .line 101
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    const-string v7, "layout_inflater"

    invoke-static {v6, v7}, Lcom/android/settings/personalpage/PersonalPageSettings;->access$000(Lcom/android/settings/personalpage/PersonalPageSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 102
    .local v4, "li":Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->rsrc:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 104
    .end local v4    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "e":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 108
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-static {v6}, Lcom/android/settings/personalpage/PersonalPageSettings;->access$100(Lcom/android/settings/personalpage/PersonalPageSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 109
    .local v1, "ApplicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageSettings$PersonalPagePKGArrayAdapter;->this$0:Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-static {v6}, Lcom/android/settings/personalpage/PersonalPageSettings;->access$100(Lcom/android/settings/personalpage/PersonalPageSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "AppName":Ljava/lang/String;
    const v6, 0x7f100314

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v6, 0x7f100315

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "AppName":Ljava/lang/String;
    .end local v1    # "ApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return-object v5

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PersonalPageSettings"

    const-string v7, "No name found for application messaging"

    invoke-static {v6, v7, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
