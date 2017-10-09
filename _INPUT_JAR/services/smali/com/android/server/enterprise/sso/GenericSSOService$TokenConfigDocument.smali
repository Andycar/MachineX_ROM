.class Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field deviceCert:Lorg/w3c/dom/Node;

.field tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field userCert:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 4096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4074
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 4079
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    .line 4083
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    .line 4087
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    .line 4097
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 4098
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    .line 4099
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V

    .line 4100
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4073
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4073
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4073
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 4073
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V

    return-void
.end method

.method private getDeviceCertificate()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 4151
    if-eqz p1, :cond_b

    .line 4152
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 4153
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getUserCertificate()Lorg/w3c/dom/Node;
    .registers 2

    .prologue
    .line 4147
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private update()V
    .registers 4

    .prologue
    .line 4107
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->updateToken()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 4115
    :cond_3
    :goto_3
    return-void

    .line 4108
    :catch_4
    move-exception v0

    .line 4109
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4110
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 4111
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_11
    move-exception v0

    .line 4112
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4113
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private updateToken()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4118
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 4119
    .local v2, "root":Lorg/w3c/dom/Node;
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 4120
    iput-object v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    .line 4121
    iput-object v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    .line 4122
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 4123
    .local v4, "tokenNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_74

    .line 4124
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 4125
    .local v3, "token":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_49

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "apptoken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 4127
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "packagename"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 4130
    .local v0, "appPkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->tokens:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4123
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 4131
    :cond_49
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_5e

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "devicecertificate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 4134
    iput-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->deviceCert:Lorg/w3c/dom/Node;

    goto :goto_46

    .line 4135
    :cond_5e
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_46

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "usercertificate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 4137
    iput-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->userCert:Lorg/w3c/dom/Node;

    goto :goto_46

    .line 4140
    .end local v3    # "token":Lorg/w3c/dom/Node;
    :cond_74
    return-void
.end method
