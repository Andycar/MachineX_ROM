.class Lcom/sec/android/sviewcover/SViewCoverSetting$2;
.super Ljava/lang/Object;
.source "SViewCoverSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverSetting;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverSetting;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverSetting;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverSetting$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverSetting$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverSetting;->access$100(Lcom/sec/android/sviewcover/SViewCoverSetting;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->showCoverSelector()V

    .line 64
    return-void
.end method
