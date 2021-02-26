package com.it.traveladmin.modules.info.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.it.traveladmin.common.api.CommonPage;
import com.it.traveladmin.common.api.CommonResult;
import com.it.traveladmin.modules.info.model.InfoHotel;
import com.it.traveladmin.modules.info.query.InfoHotelQuery;
import com.it.traveladmin.modules.info.query.SelectHotelQuery;
import com.it.traveladmin.modules.ums.model.UmsAdmin;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 酒店数据表 前端控制器
 * </p>
 * 说明
 * 这是一个其他供其他写的模板，要注意几个点，
 * 1接口定义的规则
 *  创建表记录：POST /{控制器路由名称}/create
 *
 * 修改表记录：POST /{控制器路由名称}/update/{id}
 *
 * 删除指定表记录：POST /{控制器路由名称}/delete/{id}
 *
 * 分页查询表记录：GET /{控制器路由名称}/list
 *
 * 获取指定记录详情：GET /{控制器路由名称}/{id}
 * 2请求的方法 GET POST
 *3.使用git分支进行开发
 * 4.一定要注意代码的规范
 * 5.必须写文档
 * @author SJG
 * @since 2021-02-25
 */
@RestController
@Api(tags = "InfoHotelController", description = "酒店数据管理")
@RequestMapping("/info/infoHotel")
public class InfoHotelController {

    /**
     * 增加酒店信息
     * 这里要注意Validated这个注解，是通过注解的方式实现字段的验证
     * @param infoHotelQuery 增加数据
     * @return 是否成功结果
     */
    @ApiOperation(value = "酒店增加")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult<Object> addInfoHotel(@Validated @RequestBody InfoHotelQuery infoHotelQuery) {
        return CommonResult.success(null);
    }

    /**
     * 根据Id删除
     *
     * @param id 酒店Id
     * @return 酒店数据是否删除成功
     */
    @ApiOperation(value = "酒店根据id删除")
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<Object> deleteInfoHotelById(@PathVariable Long id) {
        return CommonResult.success(null);
    }

    /**
     * 根据酒店Id批量删除
     *
     * @param ids 酒店Id集合
     * @return 删除是否成功
     */
    @ApiOperation(value = "酒店批量删除")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult<Object> deleteInfoHotelBatch(@RequestParam("ids") List<Long> ids) {
        return CommonResult.success(null);
    }

    /**
     * 根据酒店条件查询
     *
     * @param selectHotelQuery 条件
     * @return 酒店数据
     */
    @ApiOperation(value = "酒店条件查询")
    @RequestMapping(value = "/selectInfoHotelByCondition", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult<Object> selectInfoHotelByCondition(@RequestBody SelectHotelQuery selectHotelQuery) {
        return CommonResult.success(null);
    }

    /**
     * 根据分页查询数据
     *
     * @param pageSize 每叶数量
     * @param pageNum  第几页
     * @return 酒店数据列表
     */
    @ApiOperation("分页查询")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<InfoHotel>> pagingHotelList(@RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                                                               @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {
        return CommonResult.success(CommonPage.restPage(null));
    }

    /**
     * 根据Id查询详细信息
     * @param id 酒店Id
     * @return 酒店数据
     */
    @ApiOperation("查询详情")
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<Object> selectHotelInfoById(@PathVariable Long id) {
        return CommonResult.success(null);
    }

    /**
     * 修改酒店数据
     * @param id 酒店Id
     * @param infoHotel 将要修改的酒店数据
     * @return 修改是否成功
     */
    @ApiOperation("修改酒店数据")
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<Object> updateHotelInfoById(@PathVariable Long id,@RequestBody InfoHotel infoHotel) {
        return CommonResult.success(null);
    }
}

