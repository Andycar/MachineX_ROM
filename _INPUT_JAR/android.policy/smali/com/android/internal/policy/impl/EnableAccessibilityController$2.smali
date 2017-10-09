.class Lcom/android/internal/policy/impl/EnableAccessibilityController$2;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EnableAccessibilityController;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$400(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/EnableAccessibilityController$2;->this$0:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    # getter for: Lcom/android/internal/policy/impl/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->access$100(Lcom/android/internal/policy/impl/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 115
    :cond_11
    return-void
.end method
