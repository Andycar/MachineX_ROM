.class Lcom/android/server/im/FeatureInfoParser$FeatureInfoAttribute;
.super Ljava/lang/Object;
.source "FeatureInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/im/FeatureInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureInfoAttribute"
.end annotation


# static fields
.field private static final category:Ljava/lang/String; = "category"

.field private static final clazz:Ljava/lang/String; = "class"

.field private static final feature:Ljava/lang/String; = "feature"

.field private static final featureinfo:Ljava/lang/String; = "featureinfo"

.field private static final name:Ljava/lang/String; = "name"

.field private static final packageName:Ljava/lang/String; = "package"

.field private static final source:Ljava/lang/String; = "source"

.field private static final target:Ljava/lang/String; = "target"


# instance fields
.field final synthetic this$0:Lcom/android/server/im/FeatureInfoParser;


# direct methods
.method constructor <init>(Lcom/android/server/im/FeatureInfoParser;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/im/FeatureInfoParser$FeatureInfoAttribute;->this$0:Lcom/android/server/im/FeatureInfoParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
