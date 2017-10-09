.class Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field private mlistTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->mlistTitle:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "strLocalName"    # Ljava/lang/String;
    .param p2, "strFeatureName"    # Ljava/lang/String;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->mlistTitle:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    return-void
.end method

.method public getFeatureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strLocalName"    # Ljava/lang/String;

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->mlistTitle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1062
    .local v0, "strFeatureName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    .end local v0    # "strFeatureName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "strFeatureName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
