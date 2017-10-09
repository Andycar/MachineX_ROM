.class Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;
.super Ljava/lang/Object;
.source "SViewCoverColorSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverColorSelector;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    .line 316
    return-void
.end method
