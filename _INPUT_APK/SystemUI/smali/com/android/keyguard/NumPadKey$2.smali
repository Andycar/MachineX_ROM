.class Lcom/android/keyguard/NumPadKey$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NumPadKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clockfont"    # Ljava/lang/String;
    .param p2, "numfont"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/NumPadKey;->access$302(Lcom/android/keyguard/NumPadKey;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/NumPadKey;->access$302(Lcom/android/keyguard/NumPadKey;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method
