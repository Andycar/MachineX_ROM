.class Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;
.super Landroid/database/ContentObserver;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    .line 62
    return-void
.end method
