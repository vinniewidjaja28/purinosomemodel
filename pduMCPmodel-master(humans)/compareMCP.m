%compare various figures of merit for no MCP, scaffold, and MCP cases
changeplot
p1=PduParams_NoMCP;
p2=PduParams_MCP;
p3=PduParams_MCP;
p4=PduParams_MCP;

p2.kcA=1e3;
p2.kcP=p2.kcA;
p4.kcA=1e-7;
p4.kcP=p4.kcA;

[rCDE(1), rPQ(1), fluxA(1), AcytoMean(1), AMCPMean(1)] = GradientsAcrossCellNoMCP(p1,0);

[rCDE(2), rPQ(2), fluxA(2), AcytoMean(2), AMCPMean(2)] = GradientsAcrossCell(p2,0);

[rCDE(3), rPQ(3), fluxA(3), AcytoMean(3), AMCPMean(3)] = GradientsAcrossCell(p3,0);

[rCDE(4), rPQ(4), fluxA(4), AcytoMean(4), AMCPMean(4)] = GradientsAcrossCell(p4,0);

%plot cytosolic aldehyde concentration
%change plot to cystolic PRPP concentration 
subplot(2,3,1)
ax=bar(AcytoMean',0.8);
set(gca,'YScale','log')
ax(1).FaceColor=[43 172 226]./256;
set(gca,'XTickLabel',{'No Purinosome','Scaffold','Purinosome','Sparingly Permeable Purinosome'})
%changed from 'No MCP', 'Scaffold','MCP','Sparingly Permeable MCP'
%also got rid of scaffold since purinsome and that will be the same
set(gca,'XTickLabelRotation',45);
set(gca,'FontSize',10)
ylabel('A_{cyto} (mM)')
line([0,5],[8 8],'LineStyle','--','Color','r','LineWidth',2)
ylim([10^-8, 10^2])
xlim([0,5])
axis square

%plot kinetically relevant aldehyde concentration
%change to plot kinetically relevant PRPP concentration 
subplot(2,3,2)
ax=bar(AMCPMean',0.8);
set(gca,'YScale','log')
ax(1).FaceColor=[43 172 226]./256;
set(gca,'XTickLabel',{'No Purinosome','Scaffold','Purinosome','Sparingly Permeable Purinosome'})
%changed from 'No MCP', 'Scaffold','MCP','Sparingly Permeable MCP'
%also got rid of scaffold since purinsome and that will be the same
set(gca,'XTickLabelRotation',45);
set(gca,'FontSize',10)
ylabel('A_{MCP} (mM)')
line([0,5],[p1.KPQ/1000 p1.KPQ/1000],'LineStyle','--','Color','k','LineWidth',2)
ylim([10^-8, 10^2])
xlim([0,5])
axis square

%plot flux through PduP/Q
%change to plot flux through PPAT
subplot(2,3,4)
ax=bar(rPQ',0.8);
set(gca,'YScale','log')
ax(1).FaceColor=[43 172 226]./256;
set(gca,'XTickLabel',{'No Purinosome','Scaffold','Purinosome','Sparingly Permeable Purinosome'})
%changed from 'No MCP', 'Scaffold','MCP','Sparingly Permeable MCP'
%also got rid of scaffold since purinsome and that will be the same
set(gca,'XTickLabelRotation',45);
set(gca,'FontSize',10)
ylabel({'PPAT Flux' '(\mu mol/cell-s)'})
%change from "PduP/Q Flux' to 'PPAT flux'
xlim([0,5])
axis square

%plot flux of aldehyde across cell membrane
%change to plot flux of PRPP across cell membrane 
subplot(2,3,5)
ax=bar(fluxA',0.8);
set(gca,'YScale','log')
ax(1).FaceColor=[43 172 226]./256;
set(gca,'XTickLabel',{'No Purinosome','Scaffold','Purinosome','Sparingly Permeable Purinosome'})
%changed from 'No MCP', 'Scaffold','MCP','Sparingly Permeable MCP'
%also got rid of scaffold since purinsome and that will be the same
set(gca,'XTickLabelRotation',45);
set(gca,'FontSize',10)
ylabel({'PRPP leakage' '(\mu mol/cell-s)'})
%change from 'Propionaldehyde Leakage' to PRPP leakage
xlim([0,5])
axis square

