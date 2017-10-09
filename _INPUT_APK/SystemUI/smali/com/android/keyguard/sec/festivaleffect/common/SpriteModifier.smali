.class public abstract Lcom/android/keyguard/sec/festivaleffect/common/SpriteModifier;
.super Ljava/lang/Object;
.source "SpriteModifier.java"


# instance fields
.field private mSprite:Lcom/android/keyguard/sec/festivaleffect/common/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/android/keyguard/sec/festivaleffect/common/Sprite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/common/SpriteModifier;->mSprite:Lcom/android/keyguard/sec/festivaleffect/common/Sprite;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/common/SpriteModifier;->onStart(Lcom/android/keyguard/sec/festivaleffect/common/Sprite;)V

    return-void
.end method

.method public abstract onStart(Lcom/android/keyguard/sec/festivaleffect/common/Sprite;)V
.end method

.method public abstract onUpdate(Lcom/android/keyguard/sec/festivaleffect/common/Sprite;)V
.end method
