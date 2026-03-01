--[[
 Decursive (v 1.9.8) add-on for World of Warcraft UI
 Copyright (C) 2006 Archarodim ( http://www.2072productions.com/?to=decursive-continued.txt )
 This is the continued work of the original Decursive (v1.9.4) by Quu
 Decursive 1.9.4 is in public domain ( www.quutar.com )
 
 License:
	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
 
	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
--]]

-------------------------------------------------------------------------------
-- Spanish localization
-------------------------------------------------------------------------------
if ( GetLocale() == "esES" or GetLocale() == "esMX" ) then
    --start added in Rc4
    DCR_ALLIANCE_NAME = 'Alianza';

    DCR_LOC_CLASS_DRUID   = 'Druida';
    DCR_LOC_CLASS_HUNTER  = 'Cazador';
    DCR_LOC_CLASS_MAGE    = 'Mago';
    DCR_LOC_CLASS_PALADIN = 'Paladín';
    DCR_LOC_CLASS_PRIEST  = 'Sacerdote';
    DCR_LOC_CLASS_ROGUE   = 'Pícaro';
    DCR_LOC_CLASS_SHAMAN  = 'Chamán';
    DCR_LOC_CLASS_WARLOCK = 'Brujo';
    DCR_LOC_CLASS_WARRIOR = 'Guerrero';

    DCR_STR_OTHER	    = 'Otro';
    DCR_STR_ANCHOR	    = 'Ancla';
    DCR_STR_OPTIONS	    = 'Opciones de Decursive';
    DCR_STR_CLOSE	    = 'Cerrar';
    DCR_STR_ASSISTANT	    = 'Asistente';
    DCR_STR_DCR_PRIO	    = 'Lista de prioridad';
    DCR_STR_DCR_SKIP	    = 'Lista de omisiones';
    DCR_STR_QUICK_POP	    = 'Llenar rápidamente';
    DCR_STR_POP		    = 'Llenar la lista';
    DCR_STR_GROUP	    = 'Grupo ';

    DCR_STR_NOMANA	    = '¡No hay suficiente maná!';
    DCR_STR_UNUSABLE	    = '¡Imposible curar ahora!';
    DCR_STR_NEED_CURE_ACTION_IN_BARS = "Decursive no pudo encontrar ningún hechizo de curación en tus barras de acción. Lo necesita para verificar el maná...";

    DCR_UP		    = 'ARRIBA';
    DCR_DOWN		    = 'ABAJO';

    DCR_PRIORITY_SHOW	    = 'P';
    DCR_POPULATE	    = 'R';
    DCR_SKIP_SHOW	    = 'S';
    DCR_ANCHOR_SHOW	    = 'A';
    DCR_OPTION_SHOW	    = 'O';
    DCR_CLEAR_PRIO	    = 'L';
    DCR_CLEAR_SKIP	    = 'L';

    --end added in Rc4
    DCR_LOC_AF_TYPE [DCR_DISEASE] = 'Enfermedad';
    DCR_LOC_AF_TYPE [DCR_MAGIC]	  = 'Magia';
    DCR_LOC_AF_TYPE [DCR_POISON]  = 'Veneno';
    DCR_LOC_AF_TYPE [DCR_CURSE]	  = 'Maldición';
    DCR_LOC_AF_TYPE [DCR_CHARMED] = 'Control mental';

    DCR_PET_FELHUNTER = "Manáfago";
    DCR_PET_DOOMGUARD = "Guardia apocalíptico";
    DCR_PET_FEL_CAST  = "Devorar magia";
    DCR_PET_DOOM_CAST = "Disipar magia";

    DCR_SPELL_CURE_DISEASE        = 'Curar enfermedad';
    DCR_SPELL_ABOLISH_DISEASE     = 'Suprimir enfermedad';
    DCR_SPELL_PURIFY              = 'Purificar';
    DCR_SPELL_CLEANSE             = 'Limpiar';
    DCR_SPELL_DISPELL_MAGIC       = 'Disipar magia';
    DCR_SPELL_CURE_POISON         = 'Curar veneno';
    DCR_SPELL_ABOLISH_POISON      = 'Suprimir veneno';
    DCR_SPELL_REMOVE_LESSER_CURSE = 'Eliminar maldición inferior';
    DCR_SPELL_REMOVE_CURSE        = 'Eliminar maldición';
    DCR_SPELL_PURGE               = 'Purgar';
    DCR_SPELL_RANK_1              = 'Rango 1';
    DCR_SPELL_RANK_2              = 'Rango 2';

    BINDING_NAME_DCRCLEAN		= "Limpiar grupo";
    BINDING_NAME_DCRSHOW		= "Mostrar u ocultar la barra principal de Decursive";
    BINDING_NAME_DCROPTION		= "Mostrar u ocultar la ventana de opciones";

    BINDING_NAME_DCRPRADD		= "Añadir objetivo a la lista de prioridad";
    BINDING_NAME_DCRPRCLEAR		= "Borrar la lista de prioridad";
    BINDING_NAME_DCRPRLIST		= "Mostrar la lista de prioridad";
    BINDING_NAME_DCRPRSHOW		= "Mostrar u ocultar la lista de prioridad";

    BINDING_NAME_DCRSKADD		= "Añadir objetivo a la lista de omisiones";
    BINDING_NAME_DCRSKCLEAR		= "Borrar la lista de omisiones";
    BINDING_NAME_DCRSKLIST		= "Mostrar la lista de omisiones";
    BINDING_NAME_DCRSKSHOW		= "Mostrar u ocultar la lista de omisiones";

    DCR_DISABLE_AUTOSELFCAST	= "Decursive ha detectado que la opción \"%s\" está activada.\n\nDecursive no podrá curar a nadie mientras esta opción esté activa.\n\n¿Deseas desactivarla?";

    DCR_PRIORITY_LIST		= "Lista de prioridad";
    DCR_SKIP_LIST_STR		= "Lista de omisiones";
    DCR_SKIP_OPT_STR		= "Menú de opciones";
    DCR_POPULATE_LIST		= "Llenar rápidamente la lista";
    DCR_RREMOVE_ID		= "Eliminar este jugador";
    DCR_HIDE_MAIN		= "Ocultar la ventana \"Decursive\"";
    DCR_SHOW_MSG		= "Para mostrar la ventana \"Decursive\", escribe /dcrshow.";
    DCR_IS_HERE_MSG		= "Decursive está iniciado, no olvides revisar las opciones disponibles";

    DCR_PRINT_CHATFRAME		= "Mostrar mensajes en el canal por defecto";
    DCR_PRINT_CUSTOM		= "Mostrar mensajes en la ventana";
    DCR_PRINT_ERRORS		= "Mostrar mensajes de error";

    DCR_SHOW_TOOLTIP		= "Mostrar tooltips en la lista de afligidos";
    DCR_REVERSE_LIVELIST	= "Invertir la visualización de la lista";
    DCR_HIDE_LIVELIST		= "Ocultar la lista";
    DCR_TIE_LIVELIST		= "Vincular visibilidad de la lista a \"Decursive\"";

    DCR_AMOUNT_AFFLIC		= "Número de afligidos a mostrar: ";
    DCR_BLACK_LENGTH		= "Segundos en la lista negra: ";
    DCR_SCAN_LENGTH		= "Segundos entre escaneos: ";
    DCR_ABOLISH_CHECK		= "Verificar si \"Suprimir\" está en el objetivo antes de curar";
    DCR_BEST_SPELL		= "Usar siempre el rango de hechizo más alto";
    DCR_RANDOM_ORDER		= "Curar aleatoriamente";
    DCR_CURE_PETS		= "Revisar y curar mascotas";
    DCR_IGNORE_STEALTH		= "Ignorar unidades en sigilo";
    DCR_PLAY_SOUND		= "Reproducir sonido cuando haya alguien que curar";
    DCR_ANCHOR			= "Ancla del texto";
    DCR_CHECK_RANGE		= "Verificar si el objetivo está en rango";
    DCR_DONOT_BL_PRIO		= "No poner en lista negra a los prioritarios";
    DCR_CHOOSE_CURE		= "Curar:";

    -- $s is spell name
    -- $a is affliction name/type
    -- $t is target name
    DCR_DISPELL_ENEMY		= "Lanzando '$s' sobre $t";
    DCR_NOT_CLEANED		= "¡Nada fue limpiado!";
    DCR_CLEAN_STRING		= "Disipando \"$a\" de $t";
    DCR_SPELL_FOUND		= "¡$s encontrado!";
    DCR_NO_SPELLS		= "¡No se encontraron hechizos de curación!";
    DCR_NO_SPELLS_RDY		= "¡Ningún hechizo de curación está listo!";
    DCR_OUT_OF_RANGE		= "¡$t está fuera de rango y necesita ser curado de $a!";
    DCR_IGNORE_STRING		= "$a encontrado en $t - $t ignorado.";

    DCR_INVISIBLE_LIST = {
	["Acechar"]			= true,
	["Sigilo"]			= true,
	["Acechar en las sombras"]	= true,
    }

    DCR_IGNORELIST = {
	["Desterrar"]			= true,
	["Cambio de fase"]		= true,
    };

    DCR_SKIP_LIST = {
	["Sueño sin sueños"]		= true,
	["Sueño sin sueños mayor"]	= true,
	["Visión telepática"]		= true,
	["Inyección mutante"]		= true,
    };

    DCR_SKIP_BY_CLASS_LIST = {
	[DCR_CLASS_WARRIOR] = {
	    ["Histeria ancestral"]	= true,
	    ["Inflamar maná"]		= true,
	    ["Espíritu corrupto"]	= true,
	};
	[DCR_CLASS_ROGUE] = {
	    ["Silencio"]		= true;
	    ["Histeria ancestral"]	= true,
	    ["Inflamar maná"]		= true,
	    ["Espíritu corrupto"]	= true,
	};
	[DCR_CLASS_HUNTER] = {
	    ["Grilletes de magma"]	= true,
	};
	[DCR_CLASS_MAGE] = {
	    ["Grilletes de magma"]	= true,
	};
    };
end
