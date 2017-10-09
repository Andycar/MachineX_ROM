.class Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;
.super Ljava/lang/Object;
.source "PersonalPageTutorialAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->initViewsForAPP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 118
    const-string v0, "next_is_start"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$100(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$200(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$300(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V

    goto :goto_0
.end method
