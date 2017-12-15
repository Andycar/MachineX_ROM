.class Landroid/widget/TabHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/TabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$TabContentFactory;)V
    .registers 4
    .param p2, "tag"    # Ljava/lang/CharSequence;
    .param p3, "factory"    # Landroid/widget/TabHost$TabContentFactory;

    .prologue
    .line 738
    iput-object p1, p0, Landroid/widget/TabHost$FactoryContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p2, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 740
    iput-object p3, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mFactory:Landroid/widget/TabHost$TabContentFactory;

    .line 741
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 3

    .prologue
    .line 744
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_12

    .line 745
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mFactory:Landroid/widget/TabHost$TabContentFactory;

    iget-object v1, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 747
    :cond_12
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .registers 3

    .prologue
    .line 752
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    return-void
.end method
