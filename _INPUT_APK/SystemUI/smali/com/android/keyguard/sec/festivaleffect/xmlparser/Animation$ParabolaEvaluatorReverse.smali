.class public Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParabolaEvaluatorReverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private key:F

.field private pX:F

.field private pY:F

.field final synthetic this$0:Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->this$0:Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->key:F

    iput p3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->pX:F

    iput p4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->pY:F

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float v4, v0, v1

    mul-float/2addr v4, p1

    sub-float v4, v0, v4

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->pX:F

    add-float v2, v4, v5

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->key:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;->pY:F

    add-float v3, v4, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4
.end method
