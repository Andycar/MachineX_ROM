.class final Lcom/android/server/am/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field externalToken:Landroid/os/Binder;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Ljava/lang/Object;

.field final service:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "owner"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .registers 2
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 58
    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_b

    .line 59
    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    .end local p0    # "token":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v0

    .line 61
    :goto_a
    return-object v0

    .restart local p0    # "token":Landroid/os/IBinder;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 108
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 110
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    .line 115
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 117
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_12

    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 138
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_24

    .line 139
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    :cond_24
    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 125
    :cond_10
    return-void
.end method

.method removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V
    .registers 7
    .param p1, "grantUri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 74
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_3b

    .line 76
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .line 79
    .local v1, "perm":Lcom/android/server/am/UriPermission;
    if-eqz p1, :cond_25

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 80
    :cond_25
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 81
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 85
    .end local v1    # "perm":Lcom/android/server/am/UriPermission;
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 86
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 89
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_3b
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_75

    .line 91
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .line 94
    .restart local v1    # "perm":Lcom/android/server/am/UriPermission;
    if-eqz p1, :cond_5f

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 95
    :cond_5f
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 96
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_49

    .line 100
    .end local v1    # "perm":Lcom/android/server/am/UriPermission;
    :cond_6b
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 101
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 104
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_75
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    .line 67
    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V

    .line 71
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 132
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
