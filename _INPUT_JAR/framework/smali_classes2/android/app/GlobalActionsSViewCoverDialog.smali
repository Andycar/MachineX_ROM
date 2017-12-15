.class public Landroid/app/GlobalActionsSViewCoverDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsSViewCoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    }
.end annotation


# static fields
.field private static mBackgroundView:Landroid/widget/ImageView;

.field private static mCoverColor:I

.field private static final mScafe:Ljava/lang/String;

.field private static messageView:Landroid/widget/TextView;

.field private static messageViewContainer:Landroid/widget/ScrollView;


# instance fields
.field private messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Landroid/app/GlobalActionsSViewCoverDialog;->mCoverColor:I

    .line 56
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/GlobalActionsSViewCoverDialog;->mScafe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    return-void
.end method

.method static synthetic access$002(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 1
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    sput-object p0, Landroid/app/GlobalActionsSViewCoverDialog;->mBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 50
    sput-object p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .registers 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 50
    sput-object p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageViewContainer:Landroid/widget/ScrollView;

    return-object p0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 234
    sget-object v0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    sget-object v0, Landroid/app/GlobalActionsSViewCoverDialog;->messageViewContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v0

    sget-object v1, Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    if-lt v0, v1, :cond_29

    .line 237
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    :goto_21
    sget-object v0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void

    .line 239
    :cond_29
    iget-object v0, p0, Landroid/app/GlobalActionsSViewCoverDialog;->messageView_attrs:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_21
.end method
