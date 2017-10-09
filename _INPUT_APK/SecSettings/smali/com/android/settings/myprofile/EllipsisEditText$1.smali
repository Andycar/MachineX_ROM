.class Lcom/android/settings/myprofile/EllipsisEditText$1;
.super Ljava/lang/Object;
.source "EllipsisEditText.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/EllipsisEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/EllipsisEditText;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/EllipsisEditText;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/myprofile/EllipsisEditText$1;->this$0:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ellipsized(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/settings/myprofile/EllipsisEditText$1;->this$0:Lcom/android/settings/myprofile/EllipsisEditText;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->access$002(Lcom/android/settings/myprofile/EllipsisEditText;Z)Z

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
