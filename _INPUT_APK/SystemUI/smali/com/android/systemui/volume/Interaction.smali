.class public Lcom/android/systemui/volume/Interaction;
.super Ljava/lang/Object;
.source "Interaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Interaction$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "callback"    # Lcom/android/systemui/volume/Interaction$Callback;

    .prologue
    .line 27
    new-instance v0, Lcom/android/systemui/volume/Interaction$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/Interaction$1;-><init>(Lcom/android/systemui/volume/Interaction$Callback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    new-instance v0, Lcom/android/systemui/volume/Interaction$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/Interaction$2;-><init>(Lcom/android/systemui/volume/Interaction$Callback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 41
    return-void
.end method
