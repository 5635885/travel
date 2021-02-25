package com.it.traveladmin.modules.info.model;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 景区数据表
 * </p>
 *
 * @author SJG
 * @since 2021-02-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("info_revolution_scenic_area")
@ApiModel(value="InfoRevolutionScenicArea对象", description="景区数据表")
public class InfoRevolutionScenicArea implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @ApiModelProperty(value = "景区名")
    private String name;

    @ApiModelProperty(value = "景区A级")
    private String category;

    @ApiModelProperty(value = "城市")
    private String city;

    @ApiModelProperty(value = "省")
    private String province;

    @ApiModelProperty(value = "县")
    private String country;

    @ApiModelProperty(value = "乡")
    private String villager;

    @ApiModelProperty(value = "详细地址")
    private String address;

    @ApiModelProperty(value = "开放时间")
    private Date openingHours;

    @ApiModelProperty(value = "门票")
    private BigDecimal tickets;

    @ApiModelProperty(value = "周边景区")
    private Long surroundingNearby;

    @ApiModelProperty(value = "创建时间")
    private Date cratedTime;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;


}
