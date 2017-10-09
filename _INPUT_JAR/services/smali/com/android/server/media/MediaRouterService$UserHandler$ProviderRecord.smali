.class final Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderRecord"
.end annotation


# instance fields
.field private mDescriptor:Landroid/media/RemoteDisplayState;

.field private final mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniquePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .prologue
    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 1086
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    .line 1088
    return-void
.end method

.method private assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "descriptorId"    # Ljava/lang/String;

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findRouteByDescriptorId(Ljava/lang/String;)I
    .registers 6
    .param p1, "descriptorId"    # Ljava/lang/String;

    .prologue
    .line 1169
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1170
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1f

    .line 1171
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1172
    .local v1, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1176
    .end local v0    # "i":I
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :goto_1b
    return v0

    .line 1170
    .restart local v0    # "i":I
    .restart local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1176
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1f
    const/4 v0, -0x1

    goto :goto_1b
.end method


# virtual methods
.method public appendClientState(Landroid/media/MediaRouterClientState;)V
    .registers 6
    .param p1, "state"    # Landroid/media/MediaRouterClientState;

    .prologue
    .line 1151
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1152
    .local v1, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_1d

    .line 1153
    iget-object v3, p1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getInfo()Landroid/media/MediaRouterClientState$RouteInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1155
    :cond_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, "indent":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1185
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1186
    .local v2, "routeCount":I
    if-eqz v2, :cond_45

    .line 1187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    if-ge v0, v2, :cond_5b

    .line 1188
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 1191
    .end local v0    # "i":I
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<no routes>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    :cond_5b
    return-void
.end method

.method public findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 1158
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1159
    .local v2, "routeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1f

    .line 1160
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1161
    .local v1, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1165
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :goto_1b
    return-object v1

    .line 1159
    .restart local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1165
    .end local v1    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    return-object v0
.end method

.method public getUniquePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mUniquePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState;)Z
    .registers 16
    .param p1, "descriptor"    # Landroid/media/RemoteDisplayState;

    .prologue
    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "changed":Z
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    if-eq v11, p1, :cond_ab

    .line 1101
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mDescriptor:Landroid/media/RemoteDisplayState;

    .line 1105
    const/4 v8, 0x0

    .line 1106
    .local v8, "targetIndex":I
    if-eqz p1, :cond_72

    .line 1107
    invoke-virtual {p1}, Landroid/media/RemoteDisplayState;->isValid()Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 1108
    iget-object v6, p1, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    .line 1109
    .local v6, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1110
    .local v4, "routeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v9, v8

    .end local v8    # "targetIndex":I
    .local v9, "targetIndex":I
    :goto_18
    if-ge v2, v4, :cond_71

    .line 1111
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 1113
    .local v5, "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    iget-object v1, v5, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->id:Ljava/lang/String;

    .line 1114
    .local v1, "descriptorId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v7

    .line 1115
    .local v7, "sourceIndex":I
    if-gez v7, :cond_40

    .line 1117
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->assignRouteUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1118
    .local v10, "uniqueId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-direct {v3, p0, v1, v10}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;-><init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .local v3, "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-virtual {v11, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1121
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1122
    const/4 v0, 0x1

    .line 1110
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v10    # "uniqueId":Ljava/lang/String;
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    move v9, v8

    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    goto :goto_18

    .line 1123
    :cond_40
    if-ge v7, v9, :cond_5c

    .line 1125
    const-string v11, "MediaRouterService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    goto :goto_3c

    .line 1129
    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    :cond_5c
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1130
    .restart local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v11, v7, v9}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1131
    invoke-virtual {v3, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v11

    or-int/2addr v0, v11

    goto :goto_3c

    .end local v1    # "descriptorId":Ljava/lang/String;
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .end local v5    # "routeDescriptor":Landroid/media/RemoteDisplayState$RemoteDisplayInfo;
    .end local v7    # "sourceIndex":I
    .end local v8    # "targetIndex":I
    .restart local v9    # "targetIndex":I
    :cond_71
    move v8, v9

    .line 1141
    .end local v2    # "i":I
    .end local v4    # "routeCount":I
    .end local v6    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/RemoteDisplayState$RemoteDisplayInfo;>;"
    .end local v9    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    :cond_72
    :goto_72
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .restart local v2    # "i":I
    :goto_7a
    if-lt v2, v8, :cond_ab

    .line 1142
    iget-object v11, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1143
    .restart local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    .line 1144
    const/4 v0, 0x1

    .line 1141
    add-int/lit8 v2, v2, -0x1

    goto :goto_7a

    .line 1135
    .end local v2    # "i":I
    .end local v3    # "route":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_8c
    const-string v11, "MediaRouterService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring invalid descriptor from media route provider: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v13}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getFlattenedComponentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1147
    .end local v8    # "targetIndex":I
    :cond_ab
    return v0
.end method
