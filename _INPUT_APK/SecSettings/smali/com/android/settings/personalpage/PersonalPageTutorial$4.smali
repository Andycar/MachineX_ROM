.class Lcom/android/settings/personalpage/PersonalPageTutorial$4;
.super Ljava/lang/Object;
.source "PersonalPageTutorial.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorial;->initViewsForStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$4;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial$4;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->access$200(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 167
    return-void
.end method
