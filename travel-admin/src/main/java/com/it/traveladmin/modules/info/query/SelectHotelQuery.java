package com.it.traveladmin.modules.info.query;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author 石建国
 * @create 2021/2/26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="InfoHotel条件查询对象", description="酒店查询数据")
public class SelectHotelQuery {
    @ApiModelProperty(value = "酒店名")
    private String hotelName;
    @ApiModelProperty(value = "省")
    private String province;

    @ApiModelProperty(value = "市")
    private String city;

    @ApiModelProperty(value = "县")
    private String county;

    @ApiModelProperty(value = "乡")
    private String village;
}
