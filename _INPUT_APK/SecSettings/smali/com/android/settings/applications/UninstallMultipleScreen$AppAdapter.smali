.class Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;>;"
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 285
    iput-object p3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    .line 286
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 287
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 304
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 310
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04022f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 311
    .local v2, "view":Landroid/view/View;
    move v1, p1

    .line 312
    .local v1, "listposition":I
    const v3, 0x7f1004e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 313
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$900(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 314
    new-instance v3, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 334
    return-object v2
.end method
