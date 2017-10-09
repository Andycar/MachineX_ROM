.class public Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
.super Lcom/android/settings/helpdialog/TwHelpDialog;
.source "TwHelpAnimatedDialog.java"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mBubbleAnimationView:Landroid/view/View;

.field private mCurrentPointAnimation:I

.field private mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationView:Landroid/view/View;

.field private mPointAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    .line 18
    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    .line 90
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 15
    iget v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    .line 57
    const v1, 0x7f050004

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 58
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const v1, 0x7f050005

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const v1, 0x7f050006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const/high16 v1, 0x7f050000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 80
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$1;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->onAttachedToWindow()V

    .line 27
    const v0, 0x7f100004

    invoke-virtual {p0, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 32
    :cond_0
    const v0, 0x7f100008

    invoke-virtual {p0, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 36
    :cond_1
    return-void
.end method
